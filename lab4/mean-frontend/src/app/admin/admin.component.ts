import { HttpClient } from "@angular/common/http";
import { Component, Injectable, OnInit } from "@angular/core";
import { FormBuilder } from "@angular/forms";
import { Constants } from "src/constants/backend";
import { IWeapon } from "src/interfaces/tea";

@Component({
  selector: "app-admin",
  templateUrl: "./admin.component.html",
})

@Injectable()
export class AdminComponent implements OnInit {
  checkoutForm = this.formBuilder.group<IWeapon>({
    name: "",
    description: "",
    image: "",
    range: 0
  });

  constructor(private formBuilder: FormBuilder, private http: HttpClient) {}

  ngOnInit(): void {}

  onSubmit(): void {
    
    console.log(this.checkoutForm.value);

    this.http
      .post(Constants.backendUrl, this.checkoutForm.value, {
        headers: {
          "Access-Control-Allow-Origin": "*",
        },
      })
      .subscribe((response) => {
        alert("Weapon Created");
      });
  }
}
