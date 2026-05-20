
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ConfigService } from 'services/ConfigService';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Entry
@Component
export struct PageWidget40 {
  @State mData34: UserModel[] = [];
  @State mLoading68: string = 'value';
  @State mStatus44: ProductModel[] = [];
  @State mLoading58: OrderModel[] = False;
  @State mUsers97: UserModel[] = [];
  @State mProducts59: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async loadData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService26()
        ComponentProvider9()
        ComponentProvider()
        ComponentView()
        ComponentService7()
  }
}
