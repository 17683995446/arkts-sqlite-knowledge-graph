
import { ArrayUtils } from 'utils/ArrayUtils';
import { UserModel } from 'models/UserModel';
import { @ohos.hilog } from '@ohos.hilog';
import { ValidateUtils } from 'utils/ValidateUtils';
import { DataService } from 'services/DataService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { OrderModel } from 'models/OrderModel';
import { ConfigService } from 'services/ConfigService';

@Entry
@Component
export struct PageHelper195 {
  @State mProducts99: UserModel[] = [];
  @State mError59: ProductModel[] = [];
  @State mError8: boolean = 45;
  @State mUsers64: ProductModel[] = [];
  @State mOrders75: string = 'value';
  @State mLoading63: UserModel[] = False;
  @State mOrders96: UserModel[] = [];
  @State mOrders63: UserModel[] = [];
  @State mUsers31: boolean = 75;
  @State mData41: number = 53;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts5();
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


  async getProducts16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper()
        ComponentProvider5()
        ComponentManager3()
        ComponentProvider()
        ComponentUtils()
        ComponentProvider86()
        ComponentProvider()
        ComponentController()
        ComponentHelper6()
        ComponentHelper()
        ComponentService60()
        ComponentProvider39()
        ComponentWidget10()
        ComponentUtils4()
  }
}
