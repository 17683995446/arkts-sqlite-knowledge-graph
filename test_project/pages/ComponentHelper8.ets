
import { ArrayUtils } from 'utils/ArrayUtils';
import { @system.router } from '@system.router';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { StringUtils } from 'utils/StringUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.promptAction } from '@ohos.promptAction';
import { ValidateUtils } from 'utils/ValidateUtils';

@Entry
@Component
export struct PageHelper278 {
  @State mList29: string = 'value';
  @State mProducts67: string = 'value';
  @State mList99: ProductModel[] = [];
  @State mError59: OrderModel[] = [];
  @State mData63: UserModel[] = [];
  @State mProducts51: ProductModel[] = [];
  @State mUsers47: string = 'value';
  @State mLoading32: OrderModel[] = False;
  @State mData67: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchOrders10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders10();
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


  async getUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHandler()
        ComponentService7()
        ComponentProvider84()
        ComponentHandler61()
        ComponentUtils2()
        ComponentService()
        ComponentHelper59()
        ComponentUtils98()
        ComponentController()
        ComponentController1()
        ComponentProvider29()
        ComponentService()
        ComponentManager()
        ComponentHelper()
        ComponentService8()
  }
}
