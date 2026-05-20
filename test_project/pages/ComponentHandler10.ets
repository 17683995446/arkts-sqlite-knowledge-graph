
import { @ohos.storage } from '@ohos.storage';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.router } from '@ohos.router';
import { ProductModel } from 'models/ProductModel';
import { CustomerCard } from 'common/CustomerCard';
import { OrderModel } from 'models/OrderModel';
import { StringUtils } from 'utils/StringUtils';
import { ValidateUtils } from 'utils/ValidateUtils';

@Entry
@Component
export struct PageHelper239 {
  @State mUsers36: boolean = 5;
  @State mProducts75: ProductModel[] = [];
  @State mUsers51: boolean = 51;
  @State mUsers45: string = 'value';
  @State mStatus39: OrderModel[] = [];
  @State mProducts17: string = 'value';
  @State mLoading96: UserModel[] = False;
  @State mUsers48: ProductModel[] = [];
  @State mProducts44: number = 48;
  @State mUsers9: OrderModel[] = [];
  @State mStatus89: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async loadUsers11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshProducts3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshProducts3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentController1()
        ComponentProvider96()
        ComponentHandler57()
        ComponentProvider4()
        ComponentHandler83()
        ComponentUtils7()
        ComponentHelper()
        ComponentHelper6()
  }
}
