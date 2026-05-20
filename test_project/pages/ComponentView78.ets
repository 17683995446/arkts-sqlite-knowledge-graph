
import { ConfigService } from 'services/ConfigService';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { ProductModel } from 'models/ProductModel';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { NetworkService } from 'services/NetworkService';
import { OrderModel } from 'models/OrderModel';

@Entry
@Component
export struct PageHandler553 {
  @State mList42: UserModel[] = [];
  @State mProducts27: ProductModel[] = [];
  @State mOrders71: string = 'value';
  @State mLoading100: string = 'value';
  @State mProducts30: string = 'value';
  @State mLoading32: UserModel[] = False;
  @State mError18: string = 'value';
  @State mData71: OrderModel[] = [];
  @State mLoading86: ProductModel[] = False;
  @State mLoading40: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchProducts8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts8();
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


  async getUsers17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider()
        ComponentConsumer61()
        ComponentUtils24()
        ComponentService9()
        ComponentHandler64()
        ComponentUtils7()
        ComponentWidget()
        ComponentProvider10()
        ComponentWidget48()
        ComponentWidge()
        ComponentProvider77()
        ComponentManager51()
        ComponentService1()
        ComponentController2()
  }
}
