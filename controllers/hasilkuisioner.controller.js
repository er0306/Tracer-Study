//kode dari file item.controller.js

//import helper response formatter
const { response } = require("../helpers/response.formatter");
const Sequelize = require("sequelize");
const Op = Sequelize.Op;

//import model admin
const {
  User,
  Kuisioner,
  Kuisionerdetail,
  Hasilkuisioner,
  hasilkuisionersinstansi,
} = require("../models");

// import db from '../models';
//validasi
const Validator = require("fastest-validator");
const v = new Validator();
const db = require("../models");
const hasilkuisioner = require("../models/hasilkuisioner");
const user = require("../models/user");
// const kuisioner = require('../models/kuisioner');
// const hasilkuisioner = require('../models/hasilkuisioner');
// const kuisionerdetail = require('../models/kuisionerdetail');

module.exports = {
  //membuat item
  createItem: async (req, res) => {
    try {
      //buat object item
      let kuisionerCreateObj = {
        kuisioners_id: req.body.kuisioners_id,
        users_id: data.userId,
        soal: req.body.soal,
        jawaban: req.body.jawaban,
      };

      console.log(kuisionerCreateObj);
      //validasi menggunakan module fastest-validator
      // const validate = v.validate(kuisionerCreateObj, schema);
      // if (validate.length > 0) {
      //     res.status(400).json(response(400, 'validation failed', validate));
      //     return;
      // }
      let itemGet = await Hasilkuisioner.findOne({
        where: {
          kuisioners_id: kuisionerCreateObj.kuisioners_id,
          users_id: kuisionerCreateObj.users_id,
        },
      });

      console.log("ID ITEM: ", itemGet);
      if (itemGet === null) {
        console.log("create: ");
        //buat item
        let hasilkuisCreate = await Hasilkuisioner.create(kuisionerCreateObj);

        //response menggunakan helper response.formatter
        res
          .status(200)
          .json(response(200, "success create item", hasilkuisCreate));
      } else {
        console.log("update: ");
        let hasilkuisUpdate = await Hasilkuisioner.update(kuisionerCreateObj, {
          where: {
            id: itemGet.id,
            // users_id: data.userId,
          },
        });

        res
          .status(201)
          .json(response(201, "success update item", hasilkuisUpdate));
      }

      //buat item
      // let kuisionerCreate = await Hasilkuisioner.create(kuisionerCreateObj);

      //response menggunakan helper response.formatter
      // res.status(200).json(response(200, 'success create item', kuisionerCreate));
    } catch (err) {
      res.status(500).json(response(500, "internal server error", err));
      console.log(err);
    }
  },

  createInstansiItem: async (req, res) => {
    console.log("udah ke controller");
    try {
      // Create object item
      let kuisionerCreateObj = {
        kuisionersinstansi_id: req.body.kuisionersinstansi_id,
        users_id: data.userId,
        pertanyaan: req.body.pertanyaan,
        jawaban: req.body.jawaban,
      };

      console.log(kuisionerCreateObj);

      // Find existing record
      let itemGet = await hasilkuisionersinstansi.findOne({
        where: {
          kuisionersinstansi_id: kuisionerCreateObj.kuisionersinstansi_id,
          users_id: kuisionerCreateObj.users_id,
        },
      });

      console.log("ID ITEM: ", itemGet);
      if (itemGet === null) {
        console.log("create: ");
        // Create new record
        let hasilkuisCreate = await hasilkuisionersinstansi.create(
          kuisionerCreateObj
        );

        // Respond with success
        res
          .status(200)
          .json(response(200, "success create item", hasilkuisCreate));
      } else {
        console.log("update: ");
        // Update existing record
        let hasilkuisUpdate = await hasilkuisionersinstansi.update(
          kuisionerCreateObj,
          {
            where: {
              id: itemGet.id,
            },
          }
        );

        res
          .status(201)
          .json(response(201, "success update item", hasilkuisUpdate));
      }
    } catch (err) {
      res.status(500).json(response(500, "internal server error", err));
      console.log(err);
    }
  },

  getHasilKuisInstansiById : async (req, res) => {
    const id = req.params.id;
    try {
      // Fetch results based on users_id
      const itemGet = await hasilkuisionersinstansi.findAll({
        where: {
          users_id: id,
        },
        order: [["kuisionersinstansi_id", "ASC"]],
        include: {
          model: User,
        },
      });
  
      // Check if no results found
      if (!itemGet.length) {
        return res.status(404).json(response(404, "item not found"));
      }
  
      // Respond with the fetched data
      res.status(200).json(response(200, "success get item by id", itemGet));
    } catch (err) {
      res.status(500).json(response(500, "internal server error", err));
      console.log(err);
    }
  },

  //mendapatkan semua data item
  getItem: async (req, res) => {
    try {
      //mendapatkan data semua item
      let itemGets = await Kuisionerdetail.findAll({
        //menampilkan admin yang membuat item, karena kita sudah membuat relasi
        include: {
          model: Kuisioner,
        },
      });

      //response menggunakan helper response.formatter
      res.status(200).json(response(200, "success get item", itemGets));
    } catch (err) {
      res.status(500).json(response(500, "internal server error", err));
      console.log(err);
    }
  },

  getItemKuis: async (req, res) => {
    const id = req.params.id;
    try {
      //mendapatkan data item berdasarkan id
      let itemGet = await db.sequelize.query(
        "SELECT Kuisioners.id, Kuisioners.kode_pertanyaan, Kuisioners.pertanyaan, Kuisioners.jenis_pertanyaan FROM `Kuisioners` ORDER BY Kuisioners.id ASC",
        { type: Sequelize.QueryTypes.SELECT }
      );

      //cek jika item tidak ada
      if (!itemGet) {
        res.status(404).json(response(404, "item not found"));
        return;
      }

      //cek apakah admin yang akses adalah yang membuat itemnya
      // if(itemGet.admins_id != data.adminId){
      //     res.status(403).json(response(403,'youre not owner of this item'));
      //     return;
      // }

      //response menggunakan helper response.formatter
      res.status(200).json(response(200, "success get item by id", itemGet));
    } catch (err) {
      res.status(500).json(response(500, "internal server error", err));
      console.log(err);
    }
  },
  //mendapatkan data item berdasarkan id
  getItemById: async (req, res) => {
    const id = req.params.id;
    try {
      //mendapatkan data item berdasarkan id
      // let itemGet = await db.sequelize.query("SELECT Kuisioners.id, Kuisioners.id as kuisioners_id, Kuisioners.pertanyaan, kuisionerdetails.opsi_jawaban, kuisionerdetails.jenis_soal FROM `Kuisioners` JOIN kuisionerdetails ON Kuisioners.id = kuisionerdetails.kuisioners_id WHERE Kuisioners.id = "+id+" ORDER BY Kuisioners.id ASC", { type: Sequelize.QueryTypes.SELECT });

      let itemGet = await Hasilkuisioner.findAll({
        where: {
          users_id: id,
        },
        order: [["kuisioners_id", "ASC"]],
        //menampilkan admin yang membuat item, karena kita sudah membuat relasi
        include: {
          model: User,
        },
      });
      //cek jika item tidak ada
      if (!itemGet) {
        res.status(404).json(response(404, "item not found"));
        return;
      }

      //cek apakah admin yang akses adalah yang membuat itemnya
      // if(itemGet.admins_id != data.adminId){
      //     res.status(403).json(response(403,'youre not owner of this item'));
      //     return;
      // }

      //response menggunakan helper response.formatter
      res.status(200).json(response(200, "success get item by id", itemGet));
    } catch (err) {
      res.status(500).json(response(500, "internal server error", err));
      console.log(err);
    }
  },

  //mengupdate item berdasarkan id
  updateItem: async (req, res) => {
    try {
      //mendapatkan data item untuk pengecekan
      let itemGet = await Kuisioner.findOne({
        where: {
          id: req.params.id,
        },
      });

      //cek apakah data item ada
      if (!itemGet) {
        res.status(404).json(response(404, "item not found"));
        return;
      }

      //cek apakah admin yang akses adalah yang membuat itemnya
      // if(itemGet.users_id != data.userId){
      //     res.status(403).json(response(403,'youre not owner of this item'));
      //     return;
      // }

      //membuat schema untuk validasi
      const schema = {
        pertanyaan: {
          type: "string",
          min: 5,
        },
      };

      //buat object item
      let itemUpdateObj = {
        kode_pertanyaan: req.body.kode_pertanyaan,
        pertanyaan: req.body.pertanyaan,
        pilihan: req.body.pilihan,
        jenis_pertanyaan: req.body.jenis_pertanyaan,
      };

      //validasi menggunakan module fastest-validator
      const validate = v.validate(itemUpdateObj, schema);
      if (validate.length > 0) {
        res.status(400).json(response(400, "validation failed", validate));
        return;
      }

      //update item
      await Kuisioner.update(itemUpdateObj, {
        where: {
          id: req.params.id,
        },
      });

      //mendapatkan data item setelah update
      let itemAfterUpdate = await Kuisioner.findOne({
        where: {
          id: req.params.id,
        },
      });

      //response menggunakan helper response.formatter
      res
        .status(200)
        .json(response(200, "success update item", itemAfterUpdate));
    } catch (err) {
      res.status(500).json(response(500, "internal server error", err));
      console.log(err);
    }
  },

  //menghapus item berdasarkan id
  deleteItem: async (req, res) => {
    try {
      //mendapatkan data item untuk pengecekan
      let itemGet = await Kuisioner.findOne({
        where: {
          id: req.params.id,
        },
      });

      //cek apakah data item ada
      if (!itemGet) {
        res.status(404).json(response(404, "item not found"));
        return;
      }

      //cek apakah admin yang akses adalah yang membuat itemnya
      // if(itemGet.users_id != data.userId){
      //     res.status(403).json(response(403,'youre not owner of this item'));
      //     return;
      // }

      await Kuisioner.destroy({
        where: {
          id: req.params.id,
        },
      });

      //response menggunakan helper response.formatter
      res.status(200).json(response(200, "success delete item"));
    } catch (err) {
      res.status(500).json(response(500, "internal server error", err));
      console.log(err);
    }
  },
};
