
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { ConfigService } from 'services/ConfigService';
import { @ohos.promptAction } from '@ohos.promptAction';

@Entry
@Component
export struct PageUtils206 {
  @State mProducts74: string = 'value';
  @State mProducts6: number = 32;
  @State mError50: UserModel[] = [];
  @State mStatus73: ProductModel[] = [];
  @State mOrders38: OrderModel[] = [];
  @State mProducts63: ProductModel[] = [];
  @State mProducts21: ProductModel[] = [];
  @State mList95: OrderModel[] = [];
  @State mLoading83: ProductModel[] = False;
  @State mProducts29: ProductModel[] = [];
  @State mLoading14: boolean = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadOrders10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList7(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList7();
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


  async getData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentManager7()
        ComponentController5()
        ComponentHelper()
        ComponentHandler63()
        ComponentUtils36()
        ComponentView()
  }
}
