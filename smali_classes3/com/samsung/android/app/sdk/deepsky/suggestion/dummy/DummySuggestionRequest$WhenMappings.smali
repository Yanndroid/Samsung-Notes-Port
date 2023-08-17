.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->values()[Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;->MAYBE_EVENT:Lcom/samsung/android/app/sdk/deepsky/suggestion/CapabilityEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/dummy/DummySuggestionRequest$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
