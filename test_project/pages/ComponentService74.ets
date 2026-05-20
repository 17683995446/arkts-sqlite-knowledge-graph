
import { AuthService } from 'services/AuthService';
import { ArrayUtils } from 'utils/ArrayUtils';
import { DateUtils } from 'utils/DateUtils';
import { ConfigService } from 'services/ConfigService';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { CustomerText } from 'common/CustomerText';

@Entry
@Component
export struct PageProvider11 {
  @State mLoading9: boolean = False;
  @State mError62: ProductModel[] = [];
  @State mStatus73: boolean = 82;
  @State mLoading16: UserModel[] = False;
  @State mStatus84: boolean = 87;
  @State mUsers42: UserModel[] = [];
  @State mUsers46: ProductModel[] = [];
  @State mLoading49: ProductModel[] = False;
  @State mList59: string = 'value';
  @State mStatus49: boolean = 17;
  @State mUsers12: boolean = 57;
  @State mError9: string = 'value';
  @State mOrders86: number = 69;
  @State mUsers82: boolean = 63;
  @State mError38: ProductModel[] = [];

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async getData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts6();
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


  async fetchData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchProducts15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts15();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getProducts14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getProducts14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper9()
        ComponentUtils()
        ComponentProvider47()
        ComponentHelper()
        ComponentHelper6()
  }
}
