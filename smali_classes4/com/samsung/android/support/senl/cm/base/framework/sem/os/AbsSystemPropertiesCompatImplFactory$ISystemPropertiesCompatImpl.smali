.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory$ISystemPropertiesCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsSystemPropertiesCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISystemPropertiesCompatImpl"
.end annotation


# static fields
.field public static final COUNTRY_CODE_KEY:Ljava/lang/String; = "ro.csc.countryiso_code"

.field public static final FACTORY_NAME_KEY:Ljava/lang/String; = "ro.factory.model"

.field public static final ONE_UI_NONE:I = 0x0

.field public static final PRODUCT_CODE_KEY:Ljava/lang/String; = "ril.product_code"

.field public static final SALES_CODE_VZW:Ljava/lang/String; = "VZW"


# virtual methods
.method public abstract getBuildCharacteristics()Ljava/lang/String;
.end method

.method public abstract getCountryCode()Ljava/lang/String;
.end method

.method public abstract getCountryIsoCode()Ljava/lang/String;
.end method

.method public abstract getFactoryModelName()Ljava/lang/String;
.end method

.method public abstract getOneUIVersion()I
.end method

.method public abstract getProductCode()Ljava/lang/String;
.end method

.method public abstract getSalesCode()Ljava/lang/String;
.end method
