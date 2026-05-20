
import { StringUtils } from 'utils/StringUtils';
import { CustomerCard } from 'common/CustomerCard';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.router } from '@ohos.router';
import { @ohos.hilog } from '@ohos.hilog';

@Entry
@Component
export struct PageController159 {
  @State mLoading10: number = False;
  @State mList50: string = 'value';
  @State mProducts65: ProductModel[] = [];
  @State mStatus71: UserModel[] = [];
  @State mUsers86: OrderModel[] = [];
  @State mLoading1: boolean = False;
  @State mLoading92: ProductModel[] = False;
  @State mError97: ProductModel[] = [];
  @State mData43: UserModel[] = [];
  @State mLoading57: ProductModel[] = False;
  @State mOrders20: string = 'value';
  @State mProducts39: ProductModel[] = [];
  @State mStatus41: UserModel[] = [];
  @State mProducts37: OrderModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadUsers17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers17();
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


  async loadProducts8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList18(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList18();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshList13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshList13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


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


  async getData19(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData19();
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


  build() {
        ComponentWidget9()
        ComponentHelper()
        ComponentHelper9()
        ComponentHandler6()
        ComponentView31()
  }
}
