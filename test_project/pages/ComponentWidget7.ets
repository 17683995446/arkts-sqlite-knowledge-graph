
import { @ohos.promptAction } from '@ohos.promptAction';
import { ObjectUtils } from 'utils/ObjectUtils';
import { AuthService } from 'services/AuthService';
import { StringUtils } from 'utils/StringUtils';
import { @system.router } from '@system.router';
import { UserModel } from 'models/UserModel';
import { ProductModel } from 'models/ProductModel';
import { Logger } from 'utils/Logger';
import { DataService } from 'services/DataService';
import { @ohos.hilog } from '@ohos.hilog';

@Entry
@Component
export struct PageWidget462 {
  @State mError96: string = 'value';
  @State mLoading20: number = False;
  @State mList1: OrderModel[] = [];
  @State mLoading40: UserModel[] = False;
  @State mData75: boolean = 74;
  @State mLoading76: string = 'value';

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async refreshList20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList2(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList2();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentManager()
        ComponentWidget()
        ComponentManager()
        ComponentWidget7()
        ComponentProvider3()
  }
}
