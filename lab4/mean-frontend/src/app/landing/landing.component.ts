import { HttpClient } from "@angular/common/http";
import { Component, Injectable, OnInit } from "@angular/core";
import { Constants } from "src/constants/backend";
import { IWeapon } from "src/interfaces/tea";

@Component({
  selector: "app-landing",
  templateUrl: "./landing.component.html",
  styleUrls: ["./landing.component.css"]
})
@Injectable()
export class LandingComponent implements OnInit {
  weapons?: IWeapon[];

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
    this.http
      .get<IWeapon[]>(Constants.backendUrl, {
        headers: {
          "Access-Control-Allow-Origin": "*",
        },
      })
      .subscribe((data: IWeapon[]) => {
        this.weapons = data;
      });
  }
}
