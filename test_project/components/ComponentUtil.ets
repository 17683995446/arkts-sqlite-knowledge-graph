
import { Logger } from 'utils/Logger';
import { AuthService } from 'services/AuthService';
import { NetworkService } from 'services/NetworkService';
import { DateUtils } from 'utils/DateUtils';
import { StringUtils } from 'utils/StringUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { ValidateUtils } from 'utils/ValidateUtils';
import { ProductModel } from 'models/ProductModel';

@Component
@Component
export struct ComponentWidget213 {
  @State mName32: UserModel[] = 24;
  @State mStatus34: UserModel[] = 80;
  @State mName5: boolean = 'true';
  @State mStatus35: UserModel[] = 31;

  build() {
        Row() {
          Button('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Column() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
        Column() {
          Image('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Flex() {
          Button('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Column() {
          Image('Item 0')
          Button('Item 1')
        }
  }

  onLoad5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
