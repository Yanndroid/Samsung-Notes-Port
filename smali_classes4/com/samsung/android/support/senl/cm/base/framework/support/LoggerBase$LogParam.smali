.class Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogParam"
.end annotation


# instance fields
.field private final mMsg:Ljava/lang/String;

.field private mT:Ljava/lang/Throwable;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mT:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mT:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public printFileLog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase$LogParam;->mT:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
