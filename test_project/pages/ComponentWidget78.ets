
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerText } from 'common/CustomerText';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Entry
@Component
export struct PageHelper208 {
  @State mOrders91: string = 'value';
  @State mData22: boolean = 59;
  @State mUsers19: UserModel[] = [];
  @State mStatus91: UserModel[] = [];
  @State mProducts54: string = 'value';
  @State mLoading15: ProductModel[] = False;
  @State mError7: string = 'value';
  @State mUsers98: UserModel[] = [];
  @State mStatus53: OrderModel[] = [];
  @State mStatus9: OrderModel[] = [];
  @State mList2: boolean = 53;
  @State mLoading62: OrderModel[] = False;
  @State mList48: number = 57;
  @State mStatus69: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadList6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentConsumer50()
        ComponentHandler42()
        ComponentHelper()
        ComponentManager76()
        ComponentServic()
        ComponentUtils86()
        ComponentHandler46()
        ComponentView9()
        ComponentProvider69()
        ComponentUtils99()
        ComponentConsumer()
        ComponentWidget()
        ComponentController8()
        ComponentController()
  }
}
