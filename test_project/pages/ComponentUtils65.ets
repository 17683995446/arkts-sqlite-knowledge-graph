
import { ProductModel } from 'models/ProductModel';
import { CustomerButton } from 'common/CustomerButton';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { ValidateUtils } from 'utils/ValidateUtils';

@Entry
@Component
export struct PageConsumer582 {
  @State mList9: OrderModel[] = [];
  @State mData68: UserModel[] = [];
  @State mUsers2: OrderModel[] = [];
  @State mData2: boolean = 47;
  @State mStatus14: OrderModel[] = [];
  @State mList29: UserModel[] = [];
  @State mLoading84: string = 'value';
  @State mList63: UserModel[] = [];
  @State mData10: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async fetchList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts5();
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


  async refreshProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentWidget()
        ComponentManager()
        ComponentWidget2()
        ComponentWidget()
        ComponentController5()
        ComponentController()
        ComponentConsumer()
  }
}
