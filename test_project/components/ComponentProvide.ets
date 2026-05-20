
import { ObjectUtils } from 'utils/ObjectUtils';
import { DataService } from 'services/DataService';
import { ProductModel } from 'models/ProductModel';

@Observed
@Component
export struct ComponentView552 {
  @State mList1: UserModel[] = 64;
  @State mStatus42: UserModel[] = 98;

  build() {
        Stack() {
          Image('Item 0')
          Button('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Column() {
          Button('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Row() {
          List('Item 0')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Column() {
          TextInput('Item 0')
          Button('Item 1')
        }
  }

  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
