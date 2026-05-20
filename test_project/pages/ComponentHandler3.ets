
import { ProductModel } from 'models/ProductModel';
import { UserModel } from 'models/UserModel';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { AuthService } from 'services/AuthService';
import { Logger } from 'utils/Logger';
import { ValidateUtils } from 'utils/ValidateUtils';

@Entry
@Component
export struct PageWidget142 {
  @State mError39: ProductModel[] = [];
  @State mList88: OrderModel[] = [];
  @State mStatus89: boolean = 65;
  @State mUsers79: boolean = 30;
  @State mData20: boolean = 43;
  @State mError67: number = 51;
  @State mList100: number = 60;
  @State mOrders91: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


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


  async loadList15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers4();
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


  build() {
        ComponentHelper29()
        ComponentHelper()
        ComponentManager()
        ComponentService()
        ComponentWidget()
        ComponentHelper1()
        ComponentConsumer()
        ComponentService22()
        ComponentUtils()
        ComponentProvider8()
        ComponentController()
        ComponentHandler9()
        ComponentWidget()
        ComponentHelper()
        ComponentController()
  }
}
