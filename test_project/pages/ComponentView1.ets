
import { DataService } from 'services/DataService';
import { CustomerButton } from 'common/CustomerButton';
import { UserModel } from 'models/UserModel';
import { DateUtils } from 'utils/DateUtils';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { OrderModel } from 'models/OrderModel';

@Entry
@Component
export struct PageController950 {
  @State mUsers75: string = 'value';
  @State mProducts22: boolean = 41;
  @State mStatus45: OrderModel[] = [];
  @State mLoading40: UserModel[] = False;
  @State mStatus74: string = 'value';
  @State mStatus19: ProductModel[] = [];
  @State mProducts81: number = 9;
  @State mProducts26: OrderModel[] = [];
  @State mError14: boolean = 34;
  @State mProducts61: ProductModel[] = [];
  @State mData70: string = 'value';
  @State mError95: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshData18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts14();
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


  async refreshUsers8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider41()
        ComponentController53()
        ComponentWidget()
        ComponentHelper()
        ComponentProvider83()
        ComponentUtils51()
        ComponentWidget()
        ComponentController4()
        ComponentManager()
  }
}
