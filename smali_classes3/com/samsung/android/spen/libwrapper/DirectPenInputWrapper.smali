.class public Lcom/samsung/android/spen/libwrapper/DirectPenInputWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private instance:Lcom/samsung/android/spen/libinterface/DirectPenInputInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/spen/libinterface/DirectPenInputInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/spen/libwrapper/DirectPenInputWrapper;->instance:Lcom/samsung/android/spen/libinterface/DirectPenInputInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public canStartDirectPenInput(Z)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DirectPenInputWrapper;->instance:Lcom/samsung/android/spen/libinterface/DirectPenInputInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/spen/libinterface/DirectPenInputInterface;->canStartDirectPenInput(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v0, p1}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isFrameworkSupportDirectPenInput()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libwrapper/DirectPenInputWrapper;->instance:Lcom/samsung/android/spen/libinterface/DirectPenInputInterface;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/DirectPenInputInterface;->isFrameworkSupportDirectPenInput()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;

    invoke-direct {v1, v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
