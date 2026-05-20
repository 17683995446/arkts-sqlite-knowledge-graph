
import { ArrayUtils } from 'utils/ArrayUtils';
import { ConfigService } from 'services/ConfigService';
import { DataService } from 'services/DataService';
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { NetworkService } from 'services/NetworkService';

@Entry
@Component
export struct PageView758 {
  @State mData93: UserModel[] = [];
  @State mList2: number = 58;
  @State mStatus1: OrderModel[] = [];
  @State mList46: OrderModel[] = [];
  @State mLoading65: OrderModel[] = False;
  @State mList65: boolean = 65;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async refreshUsers12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts2();
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


  build() {
        ComponentService5()
        ComponentHelper23()
        ComponentHelper1()
        ComponentConsumer()
        ComponentHandler1()
        ComponentController2()
        ComponentView()
        ComponentUtils89()
        ComponentConsumer52()
        ComponentWidget1()
        ComponentService1()
        ComponentWidget47()
        ComponentHelper51()
        ComponentHelper()
  }
}
