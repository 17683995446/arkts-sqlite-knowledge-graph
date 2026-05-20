
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { AuthService } from 'services/AuthService';
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Component
@Component
export struct ComponentConsumer629 {
  @State mAge44: string = 'value32';
  @State mName35: number = 60;
  @State mCount8: UserModel[] = 12;

  build() {
        Stack() {
          Button('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          List('Item 0')
        }
        Stack() {
          Text('Item 0')
        }
  }

  onSubmit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
