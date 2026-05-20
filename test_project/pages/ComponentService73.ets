
import { UserModel } from 'models/UserModel';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { DataService } from 'services/DataService';
import { @ohos.storage } from '@ohos.storage';
import { StringUtils } from 'utils/StringUtils';

@Entry
@Component
export struct PageView59 {
  @State mStatus52: OrderModel[] = [];
  @State mProducts14: OrderModel[] = [];
  @State mStatus21: string = 'value';
  @State mList79: number = 70;
  @State mStatus85: number = 96;
  @State mOrders64: ProductModel[] = [];
  @State mStatus34: OrderModel[] = [];
  @State mError70: ProductModel[] = [];
  @State mError31: number = 27;
  @State mStatus80: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getUsers19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentManager78()
        ComponentService7()
        ComponentProvider()
        ComponentProvider26()
        ComponentWidget28()
        ComponentHandler54()
        ComponentProvider9()
        ComponentUtils()
        ComponentUtils3()
        ComponentManager()
        ComponentView()
        ComponentUtils10()
        ComponentConsumer55()
  }
}
