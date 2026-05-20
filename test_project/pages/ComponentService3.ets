
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.router } from '@ohos.router';
import { ProductModel } from 'models/ProductModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { Logger } from 'utils/Logger';
import { CartModel } from 'models/CartModel';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerText } from 'common/CustomerText';

@Entry
@Component
export struct PageHelper20 {
  @State mProducts94: OrderModel[] = [];
  @State mError52: boolean = 12;
  @State mList27: string = 'value';
  @State mList14: ProductModel[] = [];
  @State mData90: string = 'value';
  @State mUsers79: OrderModel[] = [];
  @State mOrders12: boolean = 58;
  @State mError83: string = 'value';
  @State mError19: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async loadProducts17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentService()
        ComponentManager2()
        ComponentWidget7()
        ComponentManager()
        ComponentConsumer76()
        ComponentController()
        ComponentWidget3()
        ComponentController69()
        ComponentView()
        ComponentProvider1()
  }
}
