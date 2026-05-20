
import { ConfigService } from 'services/ConfigService';
import { ProductModel } from 'models/ProductModel';
import { CustomerButton } from 'common/CustomerButton';
import { OrderModel } from 'models/OrderModel';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { CustomerText } from 'common/CustomerText';
import { @ohos.promptAction } from '@ohos.promptAction';

@Entry
@Component
export struct PageUtils504 {
  @State mOrders24: boolean = 68;
  @State mList16: boolean = 95;
  @State mData8: boolean = 14;
  @State mData11: UserModel[] = [];
  @State mError62: number = 70;
  @State mUsers74: OrderModel[] = [];
  @State mError58: string = 'value';
  @State mOrders67: boolean = 40;
  @State mUsers39: ProductModel[] = [];
  @State mError19: ProductModel[] = [];
  @State mStatus41: UserModel[] = [];
  @State mOrders77: ProductModel[] = [];
  @State mProducts87: string = 'value';
  @State mStatus17: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async getList14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  async refreshProducts16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvide()
        ComponentManager8()
        ComponentManager()
        ComponentWidget()
        ComponentService3()
        ComponentWidget()
        ComponentConsumer()
        ComponentHandler()
        ComponentManager1()
        ComponentView62()
        ComponentProvider64()
        ComponentWidget20()
  }
}
