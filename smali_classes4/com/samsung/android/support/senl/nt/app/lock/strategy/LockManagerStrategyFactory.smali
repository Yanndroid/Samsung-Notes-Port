.class public Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATE_PASSWORD:I = 0x7

.field public static final LOCK:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UNLOCK:I = 0x2

.field public static final VERIFY:I = 0x3

.field public static final VERIFY_FOR_CONVERT:I = 0x4

.field public static final VERIFY_FOR_DELETE:I = 0x5

.field public static final VERIFY_WITH_MULTI_ACCOUNT:I = 0x6


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LockManagerStrategyFactory"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperator(I)Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/EmptyStrategy;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/EmptyStrategy;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
