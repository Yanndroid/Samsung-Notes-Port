.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionEdit;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BixbyActionEdit"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionEdit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyAction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyActionEdit;->TAG:Ljava/lang/String;

    const-string v1, "execute#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/bixby/BixbyContract;->setEditModeFromBixby()V

    return-void
.end method
