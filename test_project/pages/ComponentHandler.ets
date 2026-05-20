
import { UserModel } from 'models/UserModel';
import { ObjectUtils } from 'utils/ObjectUtils';
import { OrderModel } from 'models/OrderModel';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { DataService } from 'services/DataService';
import { Logger } from 'utils/Logger';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Entry
@Component
export struct PageController193 {
  @State mData57: string = 'value';
  @State mList83: OrderModel[] = [];
  @State mStatus33: boolean = 21;
  @State mList79: string = 'value';
  @State mStatus83: boolean = 36;
  @State mOrders79: number = 10;
  @State mLoading5: ProductModel[] = False;
  @State mList17: string = 'value';
  @State mError59: number = 58;
  @State mData47: UserModel[] = [];
  @State mStatus52: boolean = 54;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getUsers18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers18();
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


  async fetchList12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshOrders2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshOrders2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts19();
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


  build() {
        ComponentHandler()
        ComponentService()
        ComponentHandler99()
        ComponentProvider29()
        ComponentController2()
        ComponentController74()
        ComponentController()
        ComponentHelper5()
        ComponentWidget6()
        ComponentUtils99()
  }
}
