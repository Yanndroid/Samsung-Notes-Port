.class public Lcom/samsung/android/support/senl/nt/word/DocConverterConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setup()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/word/DocConverterConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/word/DocConverterConfiguration$1;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper;->setCreator(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/DocConverterHelper$Creator;)V

    return-void
.end method
