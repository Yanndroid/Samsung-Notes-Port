.class synthetic Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

.field public static final synthetic $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

.field public static final synthetic $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

.field public static final synthetic $SwitchMap$io$netty$handler$ssl$OpenSslCertificateCompressionConfig$AlgorithmMode:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->values()[Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->CHOOSE_MY_LAST_PROTOCOL:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectedListenerFailureBehavior:[I

    sget-object v3, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->values()[Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    :try_start_2
    sget-object v3, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->NO_ADVERTISE:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$SelectorFailureBehavior:[I

    sget-object v3, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->CHOOSE_MY_LAST_PROTOCOL:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->values()[Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$OpenSslCertificateCompressionConfig$AlgorithmMode:[I

    :try_start_4
    sget-object v3, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->Decompress:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$OpenSslCertificateCompressionConfig$AlgorithmMode:[I

    sget-object v3, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->Compress:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v2, 0x3

    :try_start_6
    sget-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$OpenSslCertificateCompressionConfig$AlgorithmMode:[I

    sget-object v4, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;->Both:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->values()[Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    :try_start_7
    sget-object v4, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    sget-object v3, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    sget-object v1, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NPN_AND_ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$3;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    sget-object v1, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->NONE:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
