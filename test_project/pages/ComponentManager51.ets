
import { AuthService } from 'services/AuthService';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.storage } from '@ohos.storage';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { CustomerText } from 'common/CustomerText';
import { OrderModel } from 'models/OrderModel';

@Entry
@Component
export struct PageView154 {
  @State mProducts98: OrderModel[] = [];
  @State mProducts3: ProductModel[] = [];
  @State mProducts54: string = 'value';
  @State mLoading90: number = False;
  @State mStatus29: string = 'value';
  @State mList88: number = 79;
  @State mData68: ProductModel[] = [];
  @State mOrders9: UserModel[] = [];
  @State mStatus21: string = 'value';
  @State mLoading80: boolean = False;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadData3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts10(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts10();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers3(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers3();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentManager2()
        ComponentController1()
        ComponentService()
        ComponentHandler49()
        ComponentHandler45()
        ComponentProvider()
        ComponentService97()
        ComponentService()
        ComponentHelper()
        ComponentHandler9()
        ComponentController()
        ComponentHelper5()
        ComponentWidge()
        ComponentUtils28()
  }
}
