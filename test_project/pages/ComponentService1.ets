
import { @ohos.hilog } from '@ohos.hilog';
import { StringUtils } from 'utils/StringUtils';
import { DateUtils } from 'utils/DateUtils';
import { CustomerButton } from 'common/CustomerButton';
import { CartModel } from 'models/CartModel';
import { ConfigService } from 'services/ConfigService';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { NetworkService } from 'services/NetworkService';

@Entry
@Component
export struct PageManager730 {
  @State mUsers24: UserModel[] = [];
  @State mUsers20: ProductModel[] = [];
  @State mLoading43: boolean = False;
  @State mOrders69: number = 61;
  @State mList88: boolean = 62;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData12();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshData17(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshData17();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers16(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers16();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getUsers1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getUsers1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadOrders11(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadOrders11();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentUtils84()
        ComponentProvider36()
        ComponentView()
        ComponentController()
        ComponentProvider6()
        ComponentView6()
        ComponentManager89()
        ComponentUtils()
        ComponentProvider()
  }
}
