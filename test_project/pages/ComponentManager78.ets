
import { CartModel } from 'models/CartModel';
import { Logger } from 'utils/Logger';
import { OrderModel } from 'models/OrderModel';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Entry
@Component
export struct PageManager752 {
  @State mList31: OrderModel[] = [];
  @State mUsers39: boolean = 57;
  @State mError93: OrderModel[] = [];
  @State mList32: boolean = 86;
  @State mStatus10: UserModel[] = [];
  @State mStatus46: OrderModel[] = [];
  @State mLoading57: number = False;
  @State mLoading79: boolean = False;
  @State mProducts1: UserModel[] = [];
  @State mList81: OrderModel[] = [];
  @State mUsers38: string = 'value';
  @State mOrders17: string = 'value';
  @State mUsers80: number = 87;
  @State mStatus46: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHandler9()
        ComponentView33()
        ComponentConsumer64()
        ComponentUtils()
        ComponentConsumer58()
        ComponentService30()
        ComponentHelper6()
        ComponentView()
  }
}
