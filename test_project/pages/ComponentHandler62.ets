
import { CustomerButton } from 'common/CustomerButton';
import { ConfigService } from 'services/ConfigService';
import { NetworkService } from 'services/NetworkService';
import { @ohos.router } from '@ohos.router';
import { UserModel } from 'models/UserModel';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.storage } from '@ohos.storage';

@Entry
@Component
export struct PageHandler196 {
  @State mUsers100: OrderModel[] = [];
  @State mProducts2: ProductModel[] = [];
  @State mStatus83: boolean = 24;
  @State mStatus23: boolean = 34;
  @State mList21: ProductModel[] = [];
  @State mUsers12: number = 9;
  @State mOrders14: ProductModel[] = [];
  @State mList100: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentController4()
        ComponentController39()
        ComponentService()
        ComponentUtils7()
        ComponentConsumer3()
        ComponentManager2()
        ComponentManager2()
        ComponentView39()
        ComponentController()
        ComponentService()
        ComponentView17()
  }
}
