
import { ConfigService } from 'services/ConfigService';
import { ValidateUtils } from 'utils/ValidateUtils';
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { DataService } from 'services/DataService';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.router } from '@ohos.router';
import { ArrayUtils } from 'utils/ArrayUtils';

@Entry
@Component
export struct PageHandler253 {
  @State mStatus42: string = 'value';
  @State mLoading38: ProductModel[] = False;
  @State mLoading39: OrderModel[] = False;
  @State mLoading30: ProductModel[] = False;
  @State mProducts28: OrderModel[] = [];
  @State mStatus64: ProductModel[] = [];
  @State mOrders84: number = 14;
  @State mData45: string = 'value';
  @State mLoading97: number = False;
  @State mUsers46: number = 85;
  @State mProducts37: UserModel[] = [];
  @State mStatus49: OrderModel[] = [];
  @State mList94: ProductModel[] = [];
  @State mUsers90: string = 'value';
  @State mError96: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadList12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider2()
        ComponentConsumer()
        ComponentController()
        ComponentController1()
        ComponentConsumer3()
  }
}
