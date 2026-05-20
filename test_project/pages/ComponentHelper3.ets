
import { StringUtils } from 'utils/StringUtils';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { UserModel } from 'models/UserModel';
import { @ohos.hilog } from '@ohos.hilog';

@Entry
@Component
export struct PageWidget117 {
  @State mData93: UserModel[] = [];
  @State mList33: UserModel[] = [];
  @State mError76: number = 70;
  @State mProducts64: UserModel[] = [];
  @State mList29: boolean = 57;
  @State mStatus14: OrderModel[] = [];
  @State mProducts43: boolean = 13;
  @State mStatus22: boolean = 53;

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


  async getList14(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.getList14();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList1(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList1();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadList9(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadList9();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async fetchList5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.fetchList5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  async loadProducts5(): Promise<void> {
    try {
      this.mLoading = true;
      const result = await this.dataService.loadProducts5();
      this.mData = result;
    } catch (e) {
      this.mError = e.message;
    } finally {
      this.mLoading = false;
    }
  }


  build() {
        ComponentHelper2()
        ComponentUtils33()
        ComponentConsumer()
        ComponentService2()
        ComponentProvider8()
        ComponentWidget4()
        ComponentManager54()
        ComponentProvider14()
        ComponentProvider97()
        ComponentService()
        ComponentConsumer6()
        ComponentHandler()
        ComponentController()
        ComponentUtils()
        ComponentProvider6()
  }
}
