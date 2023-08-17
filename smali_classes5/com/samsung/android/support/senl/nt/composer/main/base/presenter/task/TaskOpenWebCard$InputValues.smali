.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private objectWeb:Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->objectWeb:Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->uuid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->objectWeb:Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->uuid:Ljava/lang/String;

    return-object p0
.end method
