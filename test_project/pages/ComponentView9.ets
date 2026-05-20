
import { CustomerText } from 'common/CustomerText';
import { DateUtils } from 'utils/DateUtils';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { ConfigService } from 'services/ConfigService';
import { @system.router } from '@system.router';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.router } from '@ohos.router';

@Entry
@Component
export struct PageWidget112 {
  @State mProducts91: UserModel[] = [];
  @State mData100: string = 'value';
  @State mList74: string = 'value';
  @State mProducts68: OrderModel[] = [];
  @State mUsers59: UserModel[] = [];
  @State mError67: OrderModel[] = [];
  @State mOrders54: ProductModel[] = [];
  @State mLoading75: UserModel[] = False;
  @State mData41: number = 77;
  @State mList54: boolean = 74;
  @State mOrders93: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  async loadData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils18()
        ComponentManager70()
        ComponentService()
        ComponentConsumer47()
        ComponentManager30()
        ComponentProvider()
  }
}
