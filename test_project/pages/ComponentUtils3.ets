
import { UserModel } from 'models/UserModel';
import { CustomerText } from 'common/CustomerText';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { ConfigService } from 'services/ConfigService';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.promptAction } from '@ohos.promptAction';
import { Logger } from 'utils/Logger';

@Entry
@Component
export struct PageHandler205 {
  @State mStatus42: number = 34;
  @State mStatus49: number = 97;
  @State mProducts70: UserModel[] = [];
  @State mUsers34: OrderModel[] = [];
  @State mLoading88: UserModel[] = False;
  @State mLoading79: OrderModel[] = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshList1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchOrders14();
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


  async refreshProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getOrders14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getOrders14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentService7()
        ComponentController9()
        ComponentUtils()
        ComponentUtils71()
        ComponentProvider8()
        ComponentService()
        ComponentUtils28()
        ComponentView()
  }
}
