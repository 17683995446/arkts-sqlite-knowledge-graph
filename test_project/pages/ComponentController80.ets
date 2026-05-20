
import { ProductModel } from 'models/ProductModel';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.router } from '@ohos.router';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Entry
@Component
export struct PageProvider967 {
  @State mUsers34: boolean = 36;
  @State mData43: UserModel[] = [];
  @State mList15: OrderModel[] = [];
  @State mError95: string = 'value';
  @State mProducts1: UserModel[] = [];
  @State mLoading84: ProductModel[] = False;
  @State mData43: boolean = 91;
  @State mList22: UserModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshOrders8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList19();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders3();
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


  async fetchData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentProvider()
        ComponentWidget()
        ComponentHelper()
        ComponentManager60()
        ComponentView27()
        ComponentWidget()
  }
}
