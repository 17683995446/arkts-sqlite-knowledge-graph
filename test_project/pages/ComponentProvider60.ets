
import { DataService } from 'services/DataService';
import { @ohos.router } from '@ohos.router';
import { Logger } from 'utils/Logger';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.promptAction } from '@ohos.promptAction';

@Entry
@Component
export struct PageHandler720 {
  @State mLoading96: string = 'value';
  @State mError81: boolean = 17;
  @State mUsers68: UserModel[] = [];
  @State mOrders3: OrderModel[] = [];
  @State mError74: number = 96;
  @State mList61: OrderModel[] = [];
  @State mStatus46: UserModel[] = [];
  @State mOrders79: number = 51;
  @State mStatus63: number = 24;
  @State mOrders25: boolean = 10;
  @State mUsers55: OrderModel[] = [];
  @State mOrders93: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshUsers12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts7();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService33()
        ComponentView4()
        ComponentWidget18()
        ComponentHelper()
        ComponentUtils49()
        ComponentProvider()
        ComponentManager()
        ComponentView45()
        ComponentManager()
  }
}
