import express from "express";
import { WeaponController } from "../controllers/weaponController";

const router = express.Router();
const baseEndpoint = "/weapon";

const weaponController = new WeaponController();

// Create
router.post(baseEndpoint, async (req, res, next) => {
  await weaponController.CreateWeapon(req, res, next);
});

// Get One
router.get(`${baseEndpoint}/:id`, async (req, res, next) => {
  await weaponController.GetWeapon(req.params.id, req, res, next);
});

// Get All
router.get(baseEndpoint, (req, res) => {
  weaponController.GetAllWeapon(res);
});

// Update
router.put(`${baseEndpoint}/:id`, async (req, res, next) => {
  await weaponController.UpdateWeapon(req.params.id, req, res, next);
});

// Delete
router.delete(`${baseEndpoint}/:id`, (req, res) => {
  weaponController.DeleteWeapon(req.params.id, res);
});

export { router as WeaponRouter };
