
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { UserModel } from 'models/UserModel';
import { @system.router } from '@system.router';
import { @ohos.storage } from '@ohos.storage';
import { CustomerCard } from 'common/CustomerCard';
import { CartModel } from 'models/CartModel';

@Entry
@Component
export struct PageWidget288 {
  @State mData6: UserModel[] = [];
  @State mError28: boolean = 25;
  @State mError100: string = 'value';
  @State mProducts65: ProductModel[] = [];
  @State mProducts41: string = 'value';
  @State mList83: boolean = 11;
  @State mOrders65: ProductModel[] = [];
  @State mError74: OrderModel[] = [];
  @State mError25: string = 'value';
  @State mOrders72: ProductModel[] = [];
  @State mProducts41: OrderModel[] = [];
  @State mOrders35: OrderModel[] = [];
  @State mList8: UserModel[] = [];
  @State mUsers67: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getUsers14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData19();
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


  async refreshUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers6();
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


  build() {
        ComponentWidget2()
        ComponentProvider73()
        ComponentProvider()
        ComponentView39()
        ComponentProvider18()
        ComponentConsumer47()
        ComponentView19()
        ComponentView88()
  }
}
