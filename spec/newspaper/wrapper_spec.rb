require 'spec_helper'

describe Newspaper::Wrapper do
  it 'has a version number' do
    expect(Newspaper::Wrapper::VERSION).not_to be nil
  end

  # it 'wraps text' do
  #   width = 800
  #   string = "A fifty years they've been married And they can't wait for their fifty first to roll around Yeah, roll around A thirty years they've been married And now they're old and happy and they settle down Settle down yeah! Twenty years they've been married And they did everything that could be done You know their havin' fun And then you come along and talk about So you say you wanna be married I'm gonna change your mind Oh got to change That was the good side baby Here comes the bad side Ten years they've been married And a thousand kids run around hungry Cause ther mother's a louse Daddy's down at the wihiskey house That ain't all For thirty years they've been married They don't get along so good They're tired of each other, you know how that goes She got another lover Huh same old thing So now you're seventeen Running around hanging out, and a havin' your fun Life for you has just begun, baby And then you come saying So you, you say you wanna get married Oh baby trying to put me on a chain Aint that some shame You must be losing your, sweet little mind I ain't ready yet, baby, I ain't ready I'm gonna change your mind Oooh look out baby Oh I ain't ready I ain't ready I ain't ready Let me live Let me live Let me live a little longer"
  #   new_str = string.newspaper_wrap(width)
  #   expect(new_str).to eq("A fifty years they've been married And they can't wait for their fifty first to roll around Yeah, roll around A thirty years they've been married And now they're old and happy and they settle down Settle down yeah! Twenty years they've been married And they did everything that could be done You know their havin' fun And then you come along and talk about So you say you wanna be married I'm gonna change your mind Oh got to change That was the good side baby Here comes the bad side Ten years they've been married And a thousand kids run around hungry Cause ther mother's a louse Daddy's down at the wihiskey house That ain't all For thirty years they've been married They don't get along so good They're tired of each other, you know how that goes She got another lover Huh same old thing So now y\nou're seventeen Running around hanging out, and a havin' your fun Life for you has just begun, baby And then you come saying So you, you say you wanna get married Oh baby trying to put me on a chain Aint that some shame You must be losing your, sweet little mind I ain't ready yet, baby, I ain't ready I'm gonna change your mind Oooh look out baby Oh I ain't ready I ain't ready I ain't ready Let me live Let me live Let me live a little longer")
  # end

  it 'hypenates the word' do
    start_str = 'I think this will not hy phen ate'
    expect(start_str.newspaper_wrap(4)).to eq(%w(i think this will not hy phen ate))
  end

  it 'Does not hyphenate the word' do
    start_str = 'yolomo joco'
    expect(start_str.newspaper_wrap(4)).to eq(%w(yolo- mo joco))
  end
end
