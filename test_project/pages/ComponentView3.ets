
import { ConfigService } from 'services/ConfigService';
import { @ohos.promptAction } from '@ohos.promptAction';
import { DataService } from 'services/DataService';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { CartModel } from 'models/CartModel';

@Entry
@Component
export struct PageService743 {
  @State mUsers63: OrderModel[] = [];
  @State mError20: string = 'value';
  @State mData70: UserModel[] = [];
  @State mLoading53: boolean = False;
  @State mStatus97: OrderModel[] = [];
  @State mError29: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchData1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider1()
        ComponentProvider7()
        ComponentService2()
        ComponentConsumer()
        ComponentWidget3()
        ComponentProvider()
        ComponentProvider()
        ComponentHelper()
        ComponentView16()
        ComponentView()
        ComponentConsumer3()
        ComponentProvider()
        ComponentUtils()
  }
}
