.class public Lorg/xiph/speex/Inband;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private stereo:Lorg/xiph/speex/Stereo;


# direct methods
.method public constructor <init>(Lorg/xiph/speex/Stereo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xiph/speex/Inband;->stereo:Lorg/xiph/speex/Stereo;

    return-void
.end method


# virtual methods
.method public speexInbandRequest(Lorg/xiph/speex/Bits;)V
    .locals 6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v2}, Lorg/xiph/speex/Bits;->advance(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v3}, Lorg/xiph/speex/Bits;->advance(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v4}, Lorg/xiph/speex/Bits;->advance(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/xiph/speex/Inband;->stereo:Lorg/xiph/speex/Stereo;

    invoke-virtual {v0, p1}, Lorg/xiph/speex/Stereo;->init(Lorg/xiph/speex/Bits;)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x8

    :pswitch_5
    invoke-virtual {p1, v0}, Lorg/xiph/speex/Bits;->advance(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, v5}, Lorg/xiph/speex/Bits;->advance(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public userInbandRequest(Lorg/xiph/speex/Bits;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xiph/speex/Bits;->unpack(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Lorg/xiph/speex/Bits;->advance(I)V

    return-void
.end method
