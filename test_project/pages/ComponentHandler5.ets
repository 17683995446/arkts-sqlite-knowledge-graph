
import { CustomerText } from 'common/CustomerText';
import { StringUtils } from 'utils/StringUtils';
import { AuthService } from 'services/AuthService';
import { Logger } from 'utils/Logger';
import { @system.router } from '@system.router';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.router } from '@ohos.router';

@Entry
@Component
export struct PageProvider350 {
  @State mProducts24: UserModel[] = [];
  @State mError19: ProductModel[] = [];
  @State mList83: number = 40;
  @State mUsers88: ProductModel[] = [];
  @State mStatus28: UserModel[] = [];
  @State mProducts22: OrderModel[] = [];
  @State mLoading66: string = 'value';
  @State mProducts18: string = 'value';
  @State mProducts67: ProductModel[] = [];
  @State mList61: ProductModel[] = [];
  @State mLoading48: ProductModel[] = False;
  @State mList8: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async getOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentView9()
        ComponentHelper()
        ComponentView3()
        ComponentConsumer79()
        ComponentManager42()
        ComponentWidget()
        ComponentUtils()
        ComponentService1()
        ComponentService37()
        ComponentProvider()
        ComponentHandler()
  }
}
