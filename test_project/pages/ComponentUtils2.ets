
import { Logger } from 'utils/Logger';
import { ConfigService } from 'services/ConfigService';
import { @system.router } from '@system.router';
import { OrderModel } from 'models/OrderModel';
import { AuthService } from 'services/AuthService';
import { CartModel } from 'models/CartModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage } from '@ohos.storage';
import { UserModel } from 'models/UserModel';

@Entry
@Component
export struct PageProvider500 {
  @State mStatus76: boolean = 80;
  @State mProducts55: number = 95;
  @State mStatus34: number = 17;
  @State mProducts79: UserModel[] = [];
  @State mError19: string = 'value';
  @State mStatus69: number = 33;
  @State mStatus38: number = 30;
  @State mStatus14: boolean = 44;
  @State mList88: UserModel[] = [];
  @State mLoading34: OrderModel[] = False;
  @State mStatus55: number = 18;
  @State mOrders37: boolean = 82;
  @State mData88: boolean = 11;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshProducts8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentWidget14()
        ComponentService31()
        ComponentHandler()
        ComponentWidget5()
        ComponentView3()
  }
}
