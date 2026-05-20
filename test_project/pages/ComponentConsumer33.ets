
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { StringUtils } from 'utils/StringUtils';

@Entry
@Component
export struct PageHandler823 {
  @State mError57: UserModel[] = [];
  @State mError10: number = 60;
  @State mLoading86: OrderModel[] = False;
  @State mOrders61: UserModel[] = [];
  @State mProducts2: OrderModel[] = [];
  @State mData17: OrderModel[] = [];
  @State mStatus55: ProductModel[] = [];
  @State mData7: UserModel[] = [];
  @State mOrders69: UserModel[] = [];
  @State mList99: OrderModel[] = [];
  @State mList66: UserModel[] = [];
  @State mData71: UserModel[] = [];
  @State mData42: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper47()
        ComponentProvider2()
        ComponentHelper75()
        ComponentConsumer29()
        ComponentView()
        ComponentHelper46()
        ComponentConsumer45()
        ComponentUtils45()
        ComponentHelper()
        ComponentProvider()
        ComponentHelper9()
  }
}
