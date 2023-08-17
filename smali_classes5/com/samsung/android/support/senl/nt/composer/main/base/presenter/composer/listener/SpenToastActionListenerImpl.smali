.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;
.super Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
