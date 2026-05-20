
import { AuthService } from 'services/AuthService';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { ConfigService } from 'services/ConfigService';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@Entry
@Component
export struct PageHelper321 {
  @State mLoading3: OrderModel[] = False;
  @State mStatus93: ProductModel[] = [];
  @State mStatus11: ProductModel[] = [];
  @State mOrders42: number = 68;
  @State mData57: UserModel[] = [];
  @State mOrders75: UserModel[] = [];
  @State mLoading28: boolean = False;
  @State mData31: OrderModel[] = [];
  @State mProducts28: boolean = 50;
  @State mStatus31: UserModel[] = [];
  @State mUsers44: boolean = 48;
  @State mError19: string = 'value';
  @State mList44: UserModel[] = [];
  @State mError99: boolean = 39;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchProducts9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentService67()
        ComponentController()
        ComponentHelper2()
        ComponentManager30()
        ComponentProvider()
        ComponentWidget3()
        ComponentView()
        ComponentHandler()
        ComponentManager3()
        ComponentWidget3()
        ComponentConsumer1()
        ComponentWidget3()
        ComponentManager4()
  }
}
