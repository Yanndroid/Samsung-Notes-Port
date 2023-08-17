.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IConverterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_JSON_MEMO:I = 0x7

.field public static final TYPE_L_MEMO:I = 0x4

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_N_MEMO:I = 0x5

.field public static final TYPE_SCRAP_BOOK:I = 0x3

.field public static final TYPE_SNB:I = 0x2

.field public static final TYPE_SPD:I = 0x1

.field public static final TYPE_T_MEMO:I = 0x6


# virtual methods
.method public abstract createDocumentConverter(I)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter<",
            "*>;"
        }
    .end annotation
.end method
