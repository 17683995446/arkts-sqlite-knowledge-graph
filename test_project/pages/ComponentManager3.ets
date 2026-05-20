
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @system.router } from '@system.router';
import { DataService } from 'services/DataService';
import { AuthService } from 'services/AuthService';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct PageView353 {
  @State mUsers43: UserModel[] = [];
  @State mProducts84: UserModel[] = [];
  @State mLoading14: ProductModel[] = False;
  @State mStatus88: ProductModel[] = [];
  @State mProducts51: UserModel[] = [];
  @State mList12: UserModel[] = [];
  @State mLoading85: OrderModel[] = False;
  @State mOrders73: string = 'value';
  @State mOrders48: number = 6;
  @State mData66: boolean = 100;
  @State mUsers40: string = 'value';
  @State mProducts6: UserModel[] = [];
  @State mOrders11: boolean = 50;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getOrders4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils10()
        ComponentProvider56()
        ComponentController1()
        ComponentController83()
        ComponentView70()
        ComponentProvider87()
        ComponentWidget26()
        ComponentConsumer1()
        ComponentWidget()
        ComponentController()
        ComponentService8()
  }
}
