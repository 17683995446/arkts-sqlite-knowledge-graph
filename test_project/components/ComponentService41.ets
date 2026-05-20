
import { ProductModel } from 'models/ProductModel';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.router } from '@ohos.router';
import { DataService } from 'services/DataService';

@Link
@Component
export struct ComponentWidget472 {
  @State mName9: string = 'value98';
  @State mStatus40: boolean = 'true';
  @State mName31: number = 62;
  @State mName12: UserModel[] = 96;
  @State mList24: boolean = 'true';
  @State mStatus35: boolean = 'true';

  build() {
        Row() {
          Image('Item 0')
          Image('Item 1')
        }
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Flex() {
          Button('Item 0')
        }
  }

  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
