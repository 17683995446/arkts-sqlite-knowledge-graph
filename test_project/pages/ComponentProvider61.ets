
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { ArrayUtils } from 'utils/ArrayUtils';
import { CustomerText } from 'common/CustomerText';
import { @ohos.storage } from '@ohos.storage';
import { StringUtils } from 'utils/StringUtils';
import { @system.router } from '@system.router';
import { DateUtils } from 'utils/DateUtils';
import { Logger } from 'utils/Logger';
import { UserModel } from 'models/UserModel';

@Entry
@Component
export struct PageController766 {
  @State mStatus13: UserModel[] = [];
  @State mUsers75: UserModel[] = [];
  @State mOrders81: ProductModel[] = [];
  @State mError85: ProductModel[] = [];
  @State mProducts38: OrderModel[] = [];
  @State mStatus83: number = 19;
  @State mData24: UserModel[] = [];
  @State mStatus85: UserModel[] = [];
  @State mProducts19: number = 1;
  @State mData41: OrderModel[] = [];
  @State mUsers72: OrderModel[] = [];
  @State mOrders86: number = 69;
  @State mProducts81: UserModel[] = [];
  @State mUsers34: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshProducts13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHandler5()
        ComponentWidget9()
        ComponentUtils()
        ComponentUtils()
        ComponentHelper()
  }
}
