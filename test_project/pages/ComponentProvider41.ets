
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.promptAction } from '@ohos.promptAction';
import { StringUtils } from 'utils/StringUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @system.router } from '@system.router';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { CustomerCard } from 'common/CustomerCard';

@Entry
@Component
export struct PageController663 {
  @State mUsers4: ProductModel[] = [];
  @State mUsers24: string = 'value';
  @State mProducts49: UserModel[] = [];
  @State mLoading83: UserModel[] = False;
  @State mStatus40: boolean = 40;
  @State mLoading42: number = False;
  @State mProducts56: string = 'value';
  @State mUsers29: number = 46;
  @State mList13: boolean = 92;
  @State mOrders12: string = 'value';
  @State mUsers50: string = 'value';
  @State mError93: ProductModel[] = [];
  @State mProducts91: number = 70;
  @State mUsers96: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders5();
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
        ComponentHelper()
        ComponentHandler9()
        ComponentController4()
  }
}
