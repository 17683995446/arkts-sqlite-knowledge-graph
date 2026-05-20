
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { CustomerButton } from 'common/CustomerButton';
import { Logger } from 'utils/Logger';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';

@Entry
@Component
export struct PageHelper250 {
  @State mStatus46: string = 'value';
  @State mProducts54: number = 1;
  @State mProducts88: string = 'value';
  @State mOrders2: number = 16;
  @State mProducts20: ProductModel[] = [];
  @State mData13: boolean = 97;
  @State mError70: number = 39;
  @State mProducts26: UserModel[] = [];
  @State mProducts2: UserModel[] = [];
  @State mOrders62: OrderModel[] = [];
  @State mOrders50: OrderModel[] = [];
  @State mData41: ProductModel[] = [];
  @State mList95: number = 69;

  aboutToAppear(): void {{
    this.loadData();
  }}


  aboutToDisappear(): void {{
    this.cleanup();
  }}


  async loadData1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async getList4(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList4();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts12(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts12();
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


  async fetchProducts6(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchProducts6();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchUsers20(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchUsers20();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async refreshUsers8(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.refreshUsers8();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadData13(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadData13();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadUsers15(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadUsers15();
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


  build() {
        ComponentConsumer()
        ComponentHelper24()
        ComponentService6()
        ComponentManage()
        ComponentConsumer()
        ComponentView()
        ComponentUtils16()
        ComponentConsumer()
  }
}
