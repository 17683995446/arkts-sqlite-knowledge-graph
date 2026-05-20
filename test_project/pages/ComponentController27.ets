
import { StringUtils } from 'utils/StringUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { CustomerCard } from 'common/CustomerCard';
import { ProductModel } from 'models/ProductModel';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.router } from '@ohos.router';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Entry
@Component
export struct PageProvider826 {
  @State mProducts46: OrderModel[] = [];
  @State mError38: number = 25;
  @State mOrders81: ProductModel[] = [];
  @State mData77: UserModel[] = [];
  @State mOrders12: OrderModel[] = [];
  @State mStatus100: OrderModel[] = [];
  @State mData78: string = 'value';
  @State mData75: boolean = 27;
  @State mOrders22: string = 'value';
  @State mUsers62: string = 'value';
  @State mError7: boolean = 96;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async getUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHandler25()
        ComponentWidget()
        ComponentService()
        ComponentProvider()
        ComponentController21()
        ComponentWidget63()
        ComponentWidget()
        ComponentHelper()
        ComponentProvider()
        ComponentConsumer95()
        ComponentService()
        ComponentConsumer31()
        ComponentWidget95()
  }
}
