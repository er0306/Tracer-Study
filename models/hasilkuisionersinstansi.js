'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class hasilkuisionersinstansi extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      hasilkuisionersinstansi.belongsTo(models.User, {
        foreignKey: 'users_id',
      });
      // define association here
      // hasilkuisionersinstansi.belongsTo(models.Kuisioner, {
      //   foreignKey: 'kuisioners_id',
      // });
    }
  }
  hasilkuisionersinstansi.init({
    kuisionersinstansi_id: DataTypes.INTEGER,
    users_id: DataTypes.INTEGER,
    pertanyaan: DataTypes.STRING,
    jawaban: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'hasilkuisionersinstansi',
  });
  return hasilkuisionersinstansi;
};